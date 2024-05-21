import { Component } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { LanguageService } from '../language.service'; // import the service

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent {
  title = 'Funds';
  
  constructor(private translate: TranslateService, private languageService: LanguageService) {
    translate.setDefaultLang('en'); // Set default language
    translate.use('en'); // Use a specific language
  }

  switchLanguage(language: string) {
    
    this.translate.use(language);
    this.languageService.switchLanguage(language); // update the language in the service
  }
}
