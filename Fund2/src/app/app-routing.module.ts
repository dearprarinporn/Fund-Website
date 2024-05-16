import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { FundAddComponent } from './fund-add/fund-add.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { FundEditComponent } from './fund-edit/fund-edit.component';
import { FundDetailComponent } from './fund-detail/fund-detail.component';

const routes: Routes = [
  { path: '', component: DashboardComponent },
  { path: 'add', component: FundAddComponent },
  { path: 'edit/:id', component: FundEditComponent },
  { path: 'dashboard', component: DashboardComponent },
  { path: 'detail/:id', component: FundDetailComponent },

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
