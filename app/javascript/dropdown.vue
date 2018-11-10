<template>
  <div id="dropdown">
    <a class="nav-avatar" @click="toggleActive">
      <!-- <%= image_tag gravatar_url(current_user.email, :size=> 51), alt: "nav-img", class: "nav-img" %> -->
    </a>
    <!-- menu -->
    <div class="menu-container" v-bind:class="{ active: active }">
      <ul class="user-menu">

        <li><!-- <%= link_to user_path(current_user), class: 'user-menu-link' do %> -->
          <i class="fa fa-user"></i> Profile
        </li>
        
        <li><!-- <%= link_to admin_root_path, class: 'user-menu-link' do %> -->
          <i class="fa fa-lock"></i> Admin
        </li>
        
        

        <div class="divider"></div>

        <li><!-- <%= link_to destroy_user_session_path, class: 'user-menu-link', :method => :delete  do %> -->
          <i class="fa fa-power-off"></i> Log Out
        </li>

      </ul>
    </div>
  </div>
</template>

<script>
  export default {
    data: function () {
      return {
        active: false,
        email: null
      }
    },
    methods: {
        toggleCurrent (event) {
          event.currentTarget.classList.toggle('active');
        },
        toggleActive() {
          this.active = !this.active;
        }
    }
  }
</script>

<style>
</style>


