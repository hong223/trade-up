import {Component} from '@angular/core';
import 'fullcalendar';
declare let $: any;

@Component({
	selector: 'app-root',
	templateUrl: './app.component.html'
})
export class AppComponent {
	ngOnInit() {
		$('#calendar').fullCalendar({});
	}
}
