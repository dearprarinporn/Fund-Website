import { Component, OnInit } from '@angular/core';
import { FUNDS, Fund, FundType, TransactionType } from '../funds';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-fund-edit',
  templateUrl: './fund-edit.component.html',
  styleUrl: './fund-edit.component.css'
})
export class FundEditComponent implements OnInit {
  fundCode: any;
  fund?: Fund;
  fundTypes: string[] = Object.values(FundType).filter(value => typeof value === 'string');
  riskLevels = [1, 2, 3, 4, 5, 6, 7, 8];
  transactionTypes: string[] = Object.values(TransactionType).filter(value => typeof value === 'string');

  constructor(private route: ActivatedRoute, private router: Router) { }

  ngOnInit(): void {
    this.getFund();
  }

  getFund(): void {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.fund = FUNDS.find(fund => fund.id === id);
  }
  saveAndNavigateToDashboard(): void {
    if (this.fund && this.fund.nav >= 0 && this.fund.nav <= 9999.9999 && this.fund.unit >= 0 && this.fund.unit <= 9999999.9999) {
        console.log('Saving fund data:', this.fund);
        this.router.navigate(['/dashboard']);
    } else {  
        alert('Invalid input! Please enter values within the valid range.');
    }
}
getCurrentDateTime(): string {
  return new Date().toLocaleString(); // หรือวิธีอื่น ๆ ที่ต้องการ
}
back(): void {
  this.router.navigate(['/dashboard']);
}
}