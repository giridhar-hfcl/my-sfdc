import { LightningElement, api } from 'lwc';

export default class MerchRecordViewForm extends LightningElement {
  @api recordId;
  objectApiName = 'Merchandise__c';
}