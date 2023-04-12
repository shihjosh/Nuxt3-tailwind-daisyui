<template>
  <div class="m-4 bg-white">
    <p class="pb-4 text-2xl text-slate-600">這裡是最外層 app.vue</p>
    <NuxtLayout>
      <NuxtPage />
    </NuxtLayout>
    <div class="flex flex-col items-center">
    <div class="mt-8 flex items-center">
      <input
        id="show-button"
        v-model="useRound"
        name="show-button"
        type="checkbox"
        class="h-5 w-5"
      />
      <label for="show-button" class="ml-2 block text-base text-slate-800">使用圓角按鈕</label>
    </div>
    <component :is="useRound ? RoundButton : BaseButton" />
  </div>
  </div>
</template>

<script lang="ts" setup>
const useRound = ref(false)
const BaseButton = resolveComponent('BaseApplyButton')
const RoundButton = resolveComponent('RoundApplyButton')
</script>

<style>
.page-enter-active,
.page-leave-active {
  transition: all 0.5s;
}
.page-enter-from,
.page-leave-to {
  opacity: 0;
  filter: blur(1rem);
}
</style>