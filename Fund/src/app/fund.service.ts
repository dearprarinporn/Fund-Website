// fund.service.ts
import { Injectable } from '@angular/core';
import { Fund, FUNDS } from './funds';
import { Observable, of, Subject } from 'rxjs';
import { TranslateService } from '@ngx-translate/core';

@Injectable({
  providedIn: 'root'
})
export class FundService {
  private fundSubject = new Subject<Fund[]>();
  private amountSubject = new Subject<number>();

  funds$ = this.fundSubject.asObservable();
  amount$ = this.amountSubject.asObservable();

  constructor(private translate: TranslateService) { }

  addFund(newFund: Fund): Observable<Fund> {
    newFund.id = FUNDS.length + 1;
    FUNDS.push(newFund);
    this.fundSubject.next(FUNDS);
    return of(newFund);
  }

  sendAmount(amount: number) {
    this.amountSubject.next(amount);
  }

  switchLanguage(language: string) {
    this.translate.use(language);
    // ส่งภาษาไปยัง Component ที่ต้องการรับภาษาใหม่
  }
}
