Vue.component('datepicker', {
    props:['label' , 'value'],
    template: `<v-menu
    v-model="menu"
    :close-on-content-click="false"
    transition="scale-transition"
    offset-y
    min-width="290px"
    >
    <template v-slot:activator="{ on, attrs }">
      <v-text-field
        v-model="date"
        :label="label"
        v-bind="attrs"
        v-on="on"
      ></v-text-field>
    </template>
    <v-date-picker v-model="date" no-title scrollable>
      <v-spacer></v-spacer>
      <v-btn text color="primary" @click="menu = false">Cancel</v-btn>
      <v-btn text color="primary" @click="senddata()">OK</v-btn>
    </v-date-picker>
    </v-menu>`,
    methods:{
        senddata(){
          this.menu = false
          this.$emit('input' , this.date)
        }
    },
    data(){
        return {
            menu : false,
            date : ""
        }
    }

  })

