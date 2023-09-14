import { LightningElement, api } from 'lwc';

export default class MerchRecordEditForm extends LightningElement {
    @api recordId;
  @api objectApiName = 'Merchandise__c';
}