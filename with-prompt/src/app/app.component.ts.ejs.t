---
to: "<%= appname %>/src/app/app.component.ts"
force: true
---
<% appName = h.inflection.dasherize(appname) %>
import { Component, OnInit } from '@angular/core';
import { environment } from 'src/environments/environment';
import { Router, NavigationEnd } from '@angular/router';
import { UserService } from './pages/services/userService';
declare let gtag: (config: string, code: string, path: any) => void;

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent implements OnInit {
  loadRouting = false;
  environment = environment;
  loadingRouter: boolean;
  title = '<%= appName %>';
  constructor(
    private router: Router,
    private userService: UserService,
  ) {
    this.router.events.subscribe(event => {
      if (event instanceof NavigationEnd) {
        gtag('config', 'G-RBY2GQV40M',
          {
            page_path: event.urlAfterRedirects
          }
        );
      }
    }
    );
  }

  ngOnInit(): void {
    const oas = document.querySelector('ng-uui-oas');

    oas.addEventListener('user', (event: any) => {
      if (event.detail) {
        this.loadRouting = true;
        this.userService.updateUser(event.detail);
      }
    });

    oas.addEventListener('option', (event: any) => {
      if (event.detail) {
        setTimeout(() => (this.router.navigate([event.detail.Url])), 50);
      }
    });

    oas.addEventListener('logout', (event: any) => {
      if (event.detail) {
        console.log(event.detail);
      }
    });

  }
}
