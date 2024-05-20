import { Component, EventEmitter, Output } from '@angular/core';
import { Fund, FundType, TransactionType } from '../funds';
import { Router } from '@angular/router';
import { FundService } from '../fund.service';

@Component({
  selector: 'app-fund-add',
  templateUrl: './fund-add.component.html',
  styleUrl: './fund-add.component.css'
})
export class FundAddComponent {
  @Output() addFund: EventEmitter<Fund> = new EventEmitter<Fund>();
  newFund: Fund = {
    id: 0,
    fundCode: '',
    fundName: '',
    fundType: FundType.GOLD,
    riskLevel: 1,
    transactionType: TransactionType.SUBSCRIPTION,
    nav: 0,
    unit: 0,
    get amount() {
      return this.nav * this.unit;
    },
    createDateTime: new Date()
  };

  fundTypes = Object.values(FundType).filter(value => typeof value === 'string');
  transactionTypes = Object.values(TransactionType).filter(value => typeof value === 'string');
  riskLevels = [1, 2, 3, 4, 5, 6, 7, 8];

  constructor(private fundService: FundService,private router: Router) {}

  onSubmit(): void {
    if (this.newFund.nav >= 0 && this.newFund.nav <= 9999.9999 && this.newFund.unit >= 0 && this.newFund.unit <= 9999999.9999) {
      console.log('Saving fund data:', this.newFund);
      this.fundService.addFund(this.newFund).subscribe(fund => {
        this.addFund.emit(fund);
        this.newFund = {
          id: 0,
          fundCode: '',
          fundName: '',
          fundType: FundType.GOLD,
          riskLevel: 1,
          transactionType: TransactionType.SUBSCRIPTION,
          nav: 0, 
          unit: 0,
          amount: 0,
          createDateTime: new Date()
        };
        this.router.navigate(['/dashboard']);
      });
    } else {  
      alert('Invalid input! Please enter values within the valid range.');
    }
  }
  back(): void {
    this.router.navigate(['/dashboard']);
  }
}  