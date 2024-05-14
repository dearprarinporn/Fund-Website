import { Component, OnInit } from '@angular/core';
import { FUNDS, Fund, FundType, TransactionType } from '../funds';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-fund-detail',
  templateUrl: './fund-detail.component.html',
  styleUrl: './fund-detail.component.css'
})
export class FundDetailComponent implements OnInit {
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
  
getCurrentDateTime(): string {
  return new Date().toLocaleString(); // หรือวิธีอื่น ๆ ที่ต้องการ
}
back(): void {
  this.router.navigate(['/dashboard']);
}
}