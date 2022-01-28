<!-- Please remove this file from your project -->
<template>
  <div class="p-8 text-center">
    <div class="m-8">
      <span class="text-gray-400">count: </span>
      <span class="text-gray-600">{{ count }}</span>
    </div>
    <button
      class="text-current border-black shadow rounded bg-gray-50 hover:bg-gray-100 px-8 py-2"
      @click="toIncrease"
    >increase</button>

    <div>update!2</div>
  </div>
</template>

<script>
export default {
  name: 'NuxtTutorial',
  data () {
    return {
      count: 0
    }
  },
  methods: {
    toIncrease () {
      this.count++
    }
  }
}
</script>
