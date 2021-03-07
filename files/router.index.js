import Router from "vue-router";

import ComponentName from "../components/ComponentName";

Vue.use(Router);

export default new Router({
  mode: "history",
  routes: [
    {
      path: "/pathname",
      name: "ComponentName",
      component: ComponentName,
    },
  ],
});
