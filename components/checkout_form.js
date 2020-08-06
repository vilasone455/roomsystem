Vue.component('checkout_form', {
    props:['label' , 'value'],
    template: `<v-dialog v-model="dialog" persistent max-width="600px">
    </v-dialog>`,
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

