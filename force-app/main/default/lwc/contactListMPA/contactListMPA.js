import { LightningElement, wire } from 'lwc';
import getWelcomeMessage from '@salesforce/apex/ContactController.getWelcomeMessage';
import getContacts from '@salesforce/apex/ContactController.getContacts';

export default class ContactListMPA extends LightningElement {
    @wire(getWelcomeMessage)
    welcomeMessage;

    @wire(getContacts)
    contacts;
}