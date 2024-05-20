  import { Component, OnInit, ViewChild, ChangeDetectorRef } from '@angular/core';
  import { FUNDS, Fund } from '../funds';
  import { Router } from '@angular/router';
  import { DxDataGridComponent } from 'devextreme-angular/ui/data-grid';
  import { TranslateService } from '@ngx-translate/core';
  import { forkJoin } from 'rxjs';
  import { LanguageService } from '../language.service';

  @Component({
    selector: 'app-dashboard',
    templateUrl: './dashboard.component.html',
    styleUrls: ['./dashboard.component.css']
  })
  export class DashboardComponent implements OnInit {

    @ViewChild(DxDataGridComponent, { static: false }) dataGrid!: DxDataGridComponent<any>;
    language = 'en';
    selectedFilter = 'shortName';
    languageSwitched = false;
    funds = FUNDS;
    selectedFund?: Fund;
    selectedItemKeys: string[] = [];
    dataSource: Fund[] = [];
    columns: any[];
    searchValue: string = '';

    constructor(
      private router: Router, 
      private translate: TranslateService, 
      private cd: ChangeDetectorRef, 
      private languageService: LanguageService // inject the service
    ) {
      translate.setDefaultLang(this.language);  
      this.columns = [];
    }

    ngOnInit(): void {
      this.dataSource = FUNDS;
      this.setColumns();

      // subscribe to language changes
      this.languageService.currentLanguage$.subscribe(language => {
        this.switchLanguage(language);
      });
    }

    setColumns(): void {
      const translations = [
        this.translate.get('Fund Code'),
        this.translate.get('Fund Name'),
        this.translate.get('Fund Type'),
        this.translate.get('Risk Level'),
        this.translate.get('Transaction Type'),
        this.translate.get('NAV'),
        this.translate.get('Unit'),
        this.translate.get('Amount'),
        this.translate.get('Date')
      ];

      forkJoin(translations).subscribe(translatedValues => {
        const [
          fundCode, fundName, fundType, riskLevel,
          transactionType, nav, unit, amount, date
        ] = translatedValues;

        this.columns = [
          { dataField: 'fundCode', caption: fundCode },
          { dataField: 'fundName', caption: fundName },
          { dataField: 'fundType', caption: fundType },
          { dataField: 'riskLevel', caption: riskLevel },
          { dataField: 'transactionType', caption: transactionType },
          { dataField: 'nav', caption: nav },
          { dataField: 'unit', caption: unit },
          { dataField: 'amount', caption: amount },
          { dataField: 'createDateTime', caption: date },
          {
            type: 'buttons',
            buttons: [
              {
                hint: '',
                icon: 'trash',
                onClick: this.deleteRow.bind(this),
                elementAttr: { myid: 'app.dashboard.button.deleteRow' } 
              },
              {
                hint: '',
                icon: 'edit',
                onClick: this.editRow.bind(this),
                elementAttr: { myid: 'app.dashboard.button.editRow' } 
              },
              {
                hint: '',
                icon: 'eyeopen',
                onClick: this.viewRow.bind(this),
                elementAttr: { myid: 'app.dashboard.button.viewRow' }
              },
            ]
          }     
        ];

        if (this.dataGrid) {
          this.dataGrid.instance.refresh();
        }

        this.cd.detectChanges();
      });
    }

    deleteRow(e: any): void {
      const index = this.dataSource.findIndex((item: Fund) => item === e.row.data);
      if (index >= 0) {
        this.dataSource.splice(index, 1);
      }
    }

    editRow(e: any): void {
      const selectRowData = e.row.data;
      this.router.navigate(['/edit', selectRowData.id]);
    }

    viewRow(e: any): void {
      const selectRowData = e.row.data;
      this.router.navigate(['/detail', selectRowData.id]);
    }

    deleteRecords() {
      this.dataSource = this.dataSource.filter((item: Fund) => !this.selectedItemKeys.includes(item.fundCode));
      if (this.dataGrid) {
        this.dataGrid.instance.refresh();
      }
    }

    onSelectionChanged(event: any) {
      this.selectedItemKeys = event.selectedRowKeys.map((row: any) => row.fundCode);
    }

    addrow(): void {
      this.router.navigate(['/add']);
    }

    onSubmit() {
      console.log('Fund data:', this.selectedFund);
    }

    search(): void {
      if (this.searchValue.trim() === '') {
        this.dataSource = FUNDS;
        return;
      }
      this.dataSource = this.funds.filter((fund: Fund) =>
        fund.fundName.toLowerCase().includes(this.searchValue.toLowerCase())
      );
    }

    clearSearch(): void {
      this.searchValue = '';
      this.dataSource = FUNDS;
    }

    switchLanguage(language: string) {
      this.translate.use(language).subscribe(() => {
        this.setColumns();
      });
    }
  }
