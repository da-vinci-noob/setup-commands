// Vue Router

import router from "./router";

document.addEventListener("DOMContentLoaded", () => {
  const app = new Vue({
    router, // add this line
  }).$mount();
  document.body.appendChild(app.$el);

  console.log(app);
});
