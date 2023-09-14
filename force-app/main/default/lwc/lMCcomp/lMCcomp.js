import { MessageContext, publish, releaseMessageContext, subscribe, unsubscribe } from 'lightning/messageService';
import { LightningElement, wire } from 'lwc';
import SAMPLEMC from '@salesforce/messageChannel/MyMessage__c'

export default class LMCcomp extends LightningElement {
    receivedMsg = ''
    myMsg = ''
    subscription = null

    @wire(MessageContext)
    context;

    // Useless constructor.eslintno-useless-constructor
    // constructor() {
    //     super();
    // }

    handleChange(e) {
        this.myMsg = e.target.value
    }

    publishMc() {
        const msg = {
            messageToSend: this.myMsg,
            sourceSystem: "From LMC"
        }

        publish(this.context, SAMPLEMC, msg)
        console.log('Published: ', msg.messageToSend)
    }

    subscribeMc() {
        if(!this.subscription) {
            this.subscription = subscribe(this.context, SAMPLEMC, msg => this.handleMsg(msg))
        }
    }

    unsubscribeMc(){
        unsubscribe(this.subscription); 
        this.subscription = null;
    }

    displayMsg(msg) {
        this.receivedMsg = msg ? JSON.stringify(msg, null, '\t') : 'no msg payload'
    }

    disconnectedCallback(){
        releaseMessageContext(this.context);
    }
}