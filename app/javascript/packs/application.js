import "bootstrap";
import "../plugins/flatpickr";

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { bindSweetAlertButtonSubmit } from '../components/submit-button';
bindSweetAlertButtonSubmit();

import { bindSweetAlertButtonAccept } from '../components/accept-button';
bindSweetAlertButtonAccept();

import { bindSweetAlertButtonReject } from '../components/reject-button';
bindSweetAlertButtonReject();
