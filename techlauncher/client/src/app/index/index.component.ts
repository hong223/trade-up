import {Component, OnInit} from '@angular/core';
import {Route, Router} from '@angular/router';

import { environment } from '../../environments/environment';

@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.css']
})
export class IndexComponent implements OnInit {

  controllers: Array<any>;
  serverUrl: string;

  constructor(private router: Router) { }

  ngOnInit(): void {
    this.serverUrl = environment.serverUrl;
  }

  hasRoute(controllerName: string): boolean {
    return this.router.config.some((route: Route) => {
      if (route.path === controllerName) {
        return true;
      }
    });
  }
}
