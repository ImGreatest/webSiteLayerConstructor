import {RouterModule, Routes} from '@angular/router';
import {SchemasComponent} from "./schemas/schemas.component";
import {ConstructorComponent} from "./constructor/constructor.component";
import {NgModule} from "@angular/core";
import {HomeComponent} from "./home/home.component";
export const routes: Routes = [
  { path: '', component: HomeComponent }, // main page
  { path: 'schemas', component: SchemasComponent }, // page of schemas
  { path: 'constructor', component: ConstructorComponent }, // layout grapes.js
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})

export class AppRoutes {}
