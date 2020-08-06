Vue.component('booking_form', {
    props:['dialog' , 'room_id'],
    template: `
    <v-form action='./php/api/checkin.php' method='post'>
    <v-dialog v-model="dialog" persistent max-width="600px" >
    <v-card>
      <v-card-title>
        <span class="headline">Booking</span>
      </v-card-title>
      <v-card-text>
        <v-container>
          <v-row>
            <v-col cols="12" sm="6" md="6">
              <v-text-field label="First name" v-model="form.cname"></v-text-field>
            </v-col>
            <v-col cols="12" sm="6" md="6">
              <v-text-field label="Last name" v-model="form.clastname"></v-text-field>
            </v-col>

            <v-col cols="12">
              <v-text-field label="Tel" v-model="form.ctel" ></v-text-field>
            </v-col>
  
            <v-col cols="12" sm="6">
            <v-text-field label="Bed Number" type="number" v-model="form.cbed"></v-text-field>
            </v-col>
            <v-col cols="12">
                <datepicker label="Checkin Time" @input="form.cdate = $event"></datepicker>
            </v-col>

          </v-row>
        </v-container>
      </v-card-text>
      <v-card-actions>
        <v-spacer></v-spacer>
        <v-btn color="blue darken-1" text @click="dialog = false">Close</v-btn>
        <v-btn color="blue darken-1" text @click="booking">Save</v-btn>
      </v-card-actions>
    </v-card>
  </v-dialog>
  </v-form>`,
    methods:{
        booking(){
            this.form.croom = this.room_id
            this.$emit('onbooking' , this.form)
        }
    },
    data(){
        return {
            form:{
                cname : "",
                clastname : "",
                ctel : "",
                cdate : "",
                croom : this.room_id,
                cdate : "",
                cbed : 1

            }
        }
    }

  })