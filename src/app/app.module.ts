import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {CalendarModule} from "ap-angular2-fullcalendar";
import {MatCardModule} from '@angular/material';
import {MatButtonModule} from '@angular/material';
import {MatDialogModule} from '@angular/material';

import { AppComponent } from './app.component';
import { DialogDemoComponent } from './dialog-demo/dialog-demo.component';



@NgModule({
  declarations: [AppComponent, DialogDemoComponent],
  imports: [BrowserModule,CalendarModule],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
