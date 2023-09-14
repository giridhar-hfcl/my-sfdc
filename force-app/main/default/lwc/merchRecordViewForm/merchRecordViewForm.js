import { LightningElement, api } from 'lwc';

export default class MerchRecordViewForm extends LightningElement {
  @api recordId;
  @api objectApiName = 'Merchandise__c';
}