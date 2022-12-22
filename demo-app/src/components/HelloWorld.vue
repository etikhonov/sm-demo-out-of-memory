<script setup>
  import { ref } from "vue";
  import { Example } from "cap-sm";

  defineProps({
    msg: String,
  });
</script>

<template>
  <div class="card">
    <q-btn color="brown-5" label="Start camera" @click="Example.echo()" />
  </div>
</template>

<style scoped>
  .read-the-docs {
    color: #888;
  }
</style>
