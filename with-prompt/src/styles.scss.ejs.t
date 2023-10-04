---
to: "<%= appname %>/src/styles.scss"
force: true
---
/* You can add global styles to this file, and also import other style files */
@import url("https://pruebasassets.portaloas.udistrital.edu.co/gaia-style.css");
@import url("https://pruebasassets.portaloas.udistrital.edu.co/oas.css");
@import "~@angular/material/theming";
// @import '~ngx-toastr/toastr';

@include mat-core();

// material customize

$primary: (
  50: var(--primary),
  100: var(--primary),
  200: var(--primary),
  300: var(--primary),
  400: var(--primary),
  500: var(--primary),
  600: var(--primary),
  700: var(--primary),
  800: var(--primary),
  900: var(--primary),
  A100: var(--primary),
  A200: var(--primary),
  A400: var(--primary),
  A700: var(--primary),
  contrast: (
    50: white,
    100: white,
    200: white,
    300: white,
    400: white,
    500: white,
    600: white,
    700: white,
    800: white,
    900: white,
    A100: white,
    A200: white,
    A400: white,
    A700: white,
  ),
);

$mat-mytheme-primary: mat-palette($primary, 100);
$mat-mytheme-accent: mat-palette($mat-green, A200, A100, A400);

$mat-mytheme: mat-light-theme($mat-mytheme-primary, $mat-mytheme-accent);
@include angular-material-theme($mat-mytheme);

b {
  color: var(--primary);
}

.example-month-picker.mat-calendar {
  height: 250px !important;
  .mat-calendar-table {
    border-collapse: unset;
  }
  .mat-calendar-table-header th {
    padding: 0px 0;
  }
}

table thead tr th:nth-child(n + 2) {
  border-left: none;
}

table tbody tr td {
  padding: 10px !important;
}

table tbody tr td:nth-child(n + 2) {
  border-left: none;
}

.mat-form-field-appearance-fill .mat-form-field-infix {
  padding: 0.25em 0 0em 0 !important;
}

.card-oas {
  width: calc(100vw - 80px);
}

mat-label {
  color: var(--primary);
}

.mat-grid-tile {
  overflow: auto !important;
}

.mat-grid-tile-content {
  flex-wrap: wrap;
  align-content: flex-start;
}

.section-title {
  border-bottom: 2px solid var(--primary);
  text-align: left;
  padding-left: 7%;
  color: var(--primary);
}

.mat-checkbox-indeterminate.mat-accent .mat-checkbox-background, .mat-checkbox-checked.mat-accent .mat-checkbox-background {
  background-color: var(--primary);
  svg path {
      fill: var(--primary);
  }
}

.mat-slide-toggle.mat-checked {
  .mat-slide-toggle-bar {
    background-color: var(--color3);
    .mat-slide-toggle-thumb, .mat-slide-toggle-ripple.mat-ripple-element {
      background-color: var(--primary);
    }
  }
}

.toggler {
  margin: 1em;
  text-align: right;
  color: var(--primary);
}

.mat-card-content {
  text-align: center;
}

.mat-radio-outer-circle {
  .mat-radio-checked & {
    border-color: var(--primary);
  }
}

.mat-radio-inner-cicle {
  background-color: var(--primary);
}

.mat-radio-ripple .mat-ripple-element {
  background-color: var(--primary);
}

.mat-input-element:disabled,
.mat-form-field-type-mat-native-select.mat-form-field-disabled
  .mat-form-field-infix::after {
  color: #333;
}

.mat-form-field-flex {
  background-color: #fff !important;
}

.swal2-styled.swal2-confirm {
  background-color: var(--primary) !important;
}

.swal2-loader {
  border-color: var(--primary) transparent var(--primary) transparent !important;
}

.example-section {
  margin: 12px 0;
}

.example-margin {
  margin: 0 12px;
}

ul {
  list-style-type: none;
}

.subtitle-term-conditional {
  text-align: left;
  font-size: 1.1rem;
  color: var(--primary);
  font-family: "Open Sans", Arial, sans-serif;
}

.title-term-conditional {
  text-align: center;
  font-size: 1.5rem;
  color: var(--primary);
  font-family: "Open Sans", Arial, sans-serif;
}

.text-term-condional {
  text-align: justify;
  font-family: "Open Sans", Arial, sans-serif;
  font-size: 1rem;
}
.main-container {
  flex-direction: column;
}

.username-info {
  position: relative;

  background-color: white;
  color: var(--primary);
  justify-content: center;
  text-align: center;
  display: flex;
  padding: 12px 0px;
  top: -14px;
  left: -16px;
  flex-wrap: wrap-reverse;
  width: 100vw;
  font-size: 0.8rem;
}

.text-justify {
  text-align: justify;
  margin-left: 1rem;
  max-width: 70%;
}

.text-note {
  text-align: justify;
  margin-left: 1rem;
  max-width: 70%;
}

a {
  color: var(--primary);
}

.item-default {
  display: flex;
  flex-wrap: nowrap;
  margin-bottom: 1rem;
  margin-left: 1rem;
}

.important-list {
  text-align: left;
}

.item-list-important {
  display: flex;
  flex-wrap: nowrap;
  justify-content: start;
  align-items: center;
  text-align: justify;
  font-family: "Open Sans", Arial, sans-serif;
  font-size: 1rem;
  .success {
    color: var(--primary);
    margin-right: 1rem;
  }
  .pending {
    color: var(--color1);
    margin-right: 1rem;
  }
}

@media screen and (max-width: 1024px) {
  table tbody tr td, table thead tr th {
    font-size: 0.7em !important;
    padding: 5px !important;
    line-height: normal;
  }

  .mat-card-title {
    font-size: 20px;
  }
}

@media screen and (max-width: 599px) {
  table tbody tr td, table thead tr th {
    font-size: 0.675em !important;
    padding: 1px !important;
  }
}

@media screen and (min-width: 1024px) {
  .username-info {
    display: none;
  }
}
