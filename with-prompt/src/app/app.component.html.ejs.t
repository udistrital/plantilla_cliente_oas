---
to: "<%= appname %>/src/app/app.component.html"
force: true
---
<ng-uui-oas [environment]="environment"></ng-uui-oas>
<div *ngIf="loadRouting">
    <router-outlet></router-outlet>
</div>

