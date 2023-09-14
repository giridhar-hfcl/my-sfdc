import { MessageContext, subscribe } from 'lightning/messageService';
import { LightningElement, wire } from 'lwc';
import SAMPLEMC from '@salesforce/messageChannel/MyMessage__c'

export default class LMCsub extends LightningElement {
    receivedMsg;
    myMsg;
    subscription;

    @wire(MessageContext)
    context;

    connectedCallback() {
        this.subscribeToMC()
    }

    subscribeToMC() {
        if(!this.subscription) {
            this.subscription = subscribe(this.context, SAMPLEMC, msg => this.handleMsg(msg))
        }
    }

    handleMsg(msg) {
        if(msg.messageToSend) {
            this.receivedMsg = msg.messageToSend
            console.log(msg)
        }
    }

    disconnectedCallback(){
        if(this.subscription){
            this.subscription.unsubscribe();
            this.subscription = null;
        }
    }
}