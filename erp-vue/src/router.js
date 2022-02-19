import { createRouter, createWebHistory} from "vue-router";
import Login from "./components/Login.vue";
import Home from "./components/HomeComponent.vue";


const router = new createRouter({
    history: createWebHistory(),
    routes: [
        {
            path: "/",
            component: Login,
            name: "login",
            props: true,
            meta: {
                requiresAuth: false
            }
        },
        {
            path: "/home",
            component: Home,
            name: "home",
            props: true,
            meta: {
                requiresAuth: false
            }
        }
    ]
});

export { router }