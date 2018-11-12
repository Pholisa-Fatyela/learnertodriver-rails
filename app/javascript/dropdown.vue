<template>
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