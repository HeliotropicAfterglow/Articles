<template>
  <v-dialog
    v-model="dialog"
    persistent
    max-width="600px"
  >
    <template v-slot:activator="{ on, attrs }">
      <v-btn
        color="primary"
        dark
        v-bind="attrs"
        v-on="on"
      >
        Create a new article
      </v-btn>
    </template>
    <v-card>
      <v-card-title>
        <span class="text-h5">Article Creation</span>
      </v-card-title>
      <v-card-text class="d-flex flex-row justify-space-around">
        <v-col
          cols="12"
          md="4"
        >
          <v-text-field
            v-model="article.title"
            :counter="10"
            label="Article Title"
            required
          ></v-text-field>
          <v-text-field
            v-model="article.description"
            :counter="100"
            label="Article Description"
            required
          ></v-text-field>
        </v-col>
      </v-card-text>
      <v-card-actions>
        <v-spacer></v-spacer>
        <v-btn
          color="blue darken-1"
          text
          @click="dialog = false"
        >
          Close
        </v-btn>
        <v-btn 
          elevation="2"
          @click="createArticle"
          color="primary"
          small
        >
          Submit
        </v-btn>
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>

<script>
import axios from "axios";
export default {
  name: 'ArticleCreateForm',
  data () {
    return {
      article: {
        title: '',
        description: ''
      },
      dialog: false,
    }
  },
  methods: {
    createArticle () {
      axios.post('/articles/', {
        article: this.article
      }).then(response => {
        //this.$emit('response');
        //console.log(response)
        if (response.status == 200) {
          console.log("done")
          //location.reload(); 
          this.$emit('response')
        }
      }).catch(error => {
        //console.log('error', error)
        alert(error)
      });
      this.article.title = '';
      this.article.description = '';
      this.dialog = false;
    }
  }
}
</script>