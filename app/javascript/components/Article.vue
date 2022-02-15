<template>
  <v-container class="mt-5">
    <article-create-form
      @response='getAllArticles'
    ></article-create-form>
    <v-simple-table>
      <template v-slot:default>      
        <thead>
          <tr>
            <th class="text-left">
              Id
            </th>
            <th class="text-left">
              Title
            </th>
            <th class="text-left">
              Description
            </th>
          </tr>
        </thead>
        <tbody>
          <tr
            v-for="item in articles"
            :key="item.id"
          >
            <td>{{ item.id }}</td>
            <td>{{ item.title }}</td>
            <td>{{ item.description }}</td>
          </tr>
        </tbody>
      </template>
    </v-simple-table>
  </v-container>
</template>

<script>
import axios from "axios"

export default {
  name: 'Article',
  props: {
    articles: {
      type: Array,
      default: () => []
    }
  },
  methods: {
    getAllArticles () {
      //axios.get('/articles').then(response => {
      //  console.log(response)
      //})
      location.reload()
    }
  }
}
</script>