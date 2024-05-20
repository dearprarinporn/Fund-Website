// app.module.ts

import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { DxButtonModule, DxDataGridModule, DxDropDownButtonModule, DxFormModule, DxLookupModule, DxSelectBoxModule } from 'devextreme-angular';
import { FormsModule } from '@angular/forms';
import { HttpClientModule, HttpClient } from '@angular/common/http';
import { TranslateModule, TranslateLoader } from '@ngx-translate/core';
import { TranslateHttpLoader } from '@ngx-translate/http-loader';
import { DashboardComponent } from './dashboard/dashboard.component';
import { FundAddComponent } from './fund-add/fund-add.component';
import { FundEditComponent } from './fund-edit/fund-edit.component';
import { FundDetailComponent } from './fund-detail/fund-detail.component';
import { NavbarComponent } from './navbar/navbar.component';
import { DxiColumnModule } from 'devextreme-angular/ui/nested';

@NgModule({
  declarations: [
    AppComponent,
    DashboardComponent,
    FundAddComponent,
    FundEditComponent,
    FundDetailComponent,
    NavbarComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    DxButtonModule,
    DxDataGridModule,
    DxiColumnModule,
    FormsModule,
    DxFormModule,
    DxSelectBoxModule,
    DxDropDownButtonModule,
    HttpClientModule,
    TranslateModule.forRoot({
      loader: {
        provide: TranslateLoader,
        useFactory: HttpLoaderFactory,
        deps: [HttpClient]
      }
    })
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

// Function for creating a translate loader
export function HttpLoaderFactory(http: HttpClient) {
  return new TranslateHttpLoader(http, './assets/i18n/', '.json');
}
