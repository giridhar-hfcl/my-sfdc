import { LightningElement, api } from "lwc";
import OBJ from '@salesforce/schema/Merchandise__c'
import Name from '@salesforce/schema/Merchandise__c.Name'
import Price__c from '@salesforce/schema/Merchandise__c.Price__c'
import Stock__c from '@salesforce/schema/Merchandise__c.Stock__c'

export default class MerchRecordForm extends LightningElement {
  // @api recordId;
  objectApiName = OBJ;
  fields = [Name, Price__c, Stock__c];

  handleSuccess(e) {
    console.log(this.fields)
    e.target.reset()
  }
}