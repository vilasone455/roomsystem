Vue.component('checklog_form', {
    props:['dialog' , 'room_id'],
    template: `
    <v-form action='./php/api/checkin.php' method='post'>
    <v-dialog v-model="dialog" persistent max-width="600px" >
    <v-card>
      <v-card-title>
        <span class="headline">Check In</span>
      </v-card-title>
      <v-card-text>
        <v-container>
          <v-row>
            <v-col cols="12">
              <v-text-field label="Time" v-model="form.livetime"></v-text-field>
            </v-col>
          </v-row>
        </v-container>
      </v-card-text>
      <v-card-actions>
        <v-spacer></v-spacer>
        <v-btn color="blue darken-1" text @click="dialog = false">Close</v-btn>
        <v-btn color="blue darken-1" text @click="checkin">Save</v-btn>
      </v-card-actions>
    </v-card>
  </v-dialog>
  </v-form>`,
    methods:{
        checkin(){
          var lifetime =this.form.livetime
          alert(lifetime)
            var d= new Date()
            //d.setHours(d.getHours()+lifetime);
            d = new Date(d).toISOString().
            replace(/T/, ' ').    
            replace(/\..+/, '')    
            this.form.croom = this.room_id
            this.form.cdate = d
            alert(JSON.stringify(this.form))
            this.$emit('check-in-submit' , this.form)
        }
    },
    data(){
        return {
            form:{
              livetime : 1,
              croom : 1,
              cdate : 0
            }
        }
    }

  })