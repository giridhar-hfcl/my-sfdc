import { LightningElement, api } from 'lwc';

export default class MerchRecordEditForm extends LightningElement {
    @api recordId;
    objectApiName = 'Merchandise__c';
}