<template>
  <v-alert
    dense
    text
    type="success"
    dismissible
  >{{ alertMessage }}</v-alert>
</template>

<script>
export default {
  name: 'Alert',
  props: ['alertMessage']
}
</script>