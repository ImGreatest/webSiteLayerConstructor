import { Controller, Get } from '@nestjs/common';


// test controller nest.js
@Controller('items')
export class ItemsController {
  @Get()
  findAll(): string {
    return 'This action returns all items';
  }
}
