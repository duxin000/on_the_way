<template>
    <div>
        <form action="/">
            <van-search v-model="value" placeholder="请输入搜索关键词" show-action @search="onSearch" @cancel="onCancel"
            />
        </form>
    </div>
</template>
