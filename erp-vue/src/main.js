import { createApp } from 'vue'
import App from './App.vue'
import BootstrapVue3 from 'bootstrap-vue-3'
import { router } from "./router";

import 'bootstrap/dist/css/bootstrap.css';

import 'bootstrap-vue-3/dist/bootstrap-vue-3.css';

import VueSweetalert2 from 'vue-sweetalert2';
import 'sweetalert2/dist/sweetalert2.min.css';


// const app = createApp(App).use(router).mount('#app');
const app = createApp(App);
app.use(router);
app.use( BootstrapVue3 );
app.use( VueSweetalert2 );

// app.use( jwt_decode );

app.mount("#app");