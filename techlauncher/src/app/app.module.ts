import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {CalendarModule} from "ap-angular2-fullcalendar";


import { AppComponent } from './app.component';


@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
		BrowserModule,
		CalendarModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
