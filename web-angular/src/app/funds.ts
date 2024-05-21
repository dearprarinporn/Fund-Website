export interface Fund {
    id: number;
    fundCode: string;
    fundName: string;
    fundType: FundType;
    riskLevel: number;
    transactionType: TransactionType;
    nav: number;
    unit: number;
    amount: number;
    createDateTime: Date;
  } 
export enum FundType {
    GOLD = "GOLD",
    BOND = "BOND",
    EQUITY = "EQUITY"
  }  
export enum TransactionType {
    SUBSCRIPTION = "Subscription",
    REDEMPTION = "Redemption"
} 
export const FUNDS: Fund[] = [
    { id: 1, fundCode: 'F1', fundName: 'KFSDLV', fundType: FundType.GOLD, riskLevel: 1, transactionType: TransactionType.SUBSCRIPTION, nav: 2.347, unit: 50, get amount() { return this.nav * this.unit; }, createDateTime: new Date() },
    { id: 2, fundCode: 'F2', fundName: 'K-GOLD-C(A)', fundType: FundType.BOND, riskLevel: 2, transactionType: TransactionType.REDEMPTION, nav: 6.5841, unit: 20, get amount() { return this.nav * this.unit; }, createDateTime: new Date() },
    { id: 3, fundCode: 'F3', fundName: 'ONE-THAIESG', fundType: FundType.EQUITY, riskLevel: 3, transactionType: TransactionType.SUBSCRIPTION, nav: 10.0279, unit: 30, get amount() { return this.nav * this.unit; }, createDateTime: new Date() },
    { id: 4, fundCode: 'F4', fundName: 'SCBCE(SSF)', fundType: FundType.GOLD, riskLevel: 4, transactionType: TransactionType.SUBSCRIPTION, nav: 4000, unit: 40, get amount() { return this.nav * this.unit; }, createDateTime: new Date() },
    { id: 5, fundCode: 'F5', fundName: 'K-VIETNAM-SSF', fundType: FundType.BOND, riskLevel: 5, transactionType: TransactionType.REDEMPTION, nav: 5000, unit: 50, get amount() { return this.nav * this.unit; }, createDateTime: new Date() },
    { id: 6, fundCode: 'F6', fundName: 'MEGA10-A', fundType: FundType.EQUITY, riskLevel: 8, transactionType: TransactionType.REDEMPTION, nav: 6000, unit: 60, get amount() { return this.nav * this.unit; }, createDateTime: new Date() },
    { id: 7, fundCode: 'F7', fundName: 'WWF-08', fundType: FundType.GOLD, riskLevel: 1, transactionType: TransactionType.SUBSCRIPTION, nav: 2.347, unit: 50, get amount() { return this.nav * this.unit; }, createDateTime: new Date() },
    { id: 8, fundCode: 'F8', fundName: 'ASP-SME-A', fundType: FundType.BOND, riskLevel: 2, transactionType: TransactionType.REDEMPTION, nav: 6.5841, unit: 20, get amount() { return this.nav * this.unit; }, createDateTime: new Date() },
    { id: 9, fundCode: 'F9', fundName: 'ONE-ASD', fundType: FundType.EQUITY, riskLevel: 3, transactionType: TransactionType.SUBSCRIPTION, nav: 10.0279, unit: 30, get amount() { return this.nav * this.unit; }, createDateTime: new Date() },
    { id: 10, fundCode: 'F10', fundName: 'BEGOLD', fundType: FundType.GOLD, riskLevel: 4, transactionType: TransactionType.SUBSCRIPTION, nav: 4000, unit: 40, get amount() { return this.nav * this.unit; }, createDateTime: new Date() }
  ];
    
  



