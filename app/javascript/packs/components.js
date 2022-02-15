import Vue from 'vue/dist/vue.esm';
import Article from '../components/Article.vue'
import ArticleCreateForm from '../components/ArticleCreateForm.vue'
import Alert from '../components/Alert.vue'

Vue.component('article-index', Article)
Vue.component('article-create-form', ArticleCreateForm)
Vue.component('alert', Alert)