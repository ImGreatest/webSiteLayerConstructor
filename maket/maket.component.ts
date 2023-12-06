import {Component, AfterViewInit} from '@angular/core';
import grapesjs from "grapesjs";
import 'grapesjs-preset-webpage';
import {Router} from "@angular/router";

import 'grapesjs-plugin-export';
//
@Component({
  selector: 'app-maket',
  standalone: true,
  imports: [],
  templateUrl: './maket.component.html',
  styleUrl: './maket.component.css'
})
export class MaketComponent implements AfterViewInit{

  constructor() { }

  ngAfterViewInit(): void {
    const editor = grapesjs.init({
      container: '#editor',
    });
  }
}
