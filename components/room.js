Vue.component('room', {
    props:['roomdata' ,'bookingdata'],
    template: `<v-card dark :color="getColor()" tile>
    <v-card-text style="font-weight:bold;padding:-10px">
    {{roomdata.room_code}}
  </v-card-text>
    <v-card-text class='text-center' style='font-size:18px;padding-top:15px'>
    <v-icon dark large>{{getIcon()}}</v-icon>
    {{getText()}}
  </v-card-text>

  <v-divider></v-divider>
    <v-card-actions style="background-color:white;padding-top:-15px" >
      <v-btn text color="grey" @click="checkin()" v-if="roomdata.room_status != 2">Check In</v-btn>
      <v-btn text color="grey" @click="booking()" v-if="roomdata.room_status != 2">Booking</v-btn>
      <v-btn text color="grey" v-if="roomdata.room_status == 2" @click="eventcheckout()">Check Out</v-btn>
    </v-card-actions>
    </v-card>
    `,
    methods:{
        eventcheckout(){
          this.$emit('oncheckout' , this.roomdata)
        },
        getColor(){
          return this.roomconfig[this.roomdata.room_status].color
        },
        getText(){
          var rstatus = this.roomdata.room_status
          var r = ""
          if(rstatus == 3){
            console.log("booking is : " + this.roomdata.room_code + " are " + this.roomdata.room_status)
            if(this.bookingdata != null ){
              console.log(JSON.stringify(this.bookingdata))
             
                var r = this.bookingdata.customer_name   
            }
            
          }else{
            var r = this.roomconfig[rstatus].txt
          }
          return r
        },
        getIcon(){
          return this.roomconfig[this.roomdata.room_status].icon
        },
        checkin(){
          this.$emit('checkin' , this.roomdata)
        },
        booking(){
          this.$emit('booking' , this.roomdata)
        }
    },
    data(){
      return{
        roomconfig : {
          1 : {color : "indigo darken-1" , txt : "Free Room" , icon : "mdi-checkbox-marked-circle"},
          2 : {color : "grey lighten-2" , txt : "Rending Room" , icon : "mdi-account-circle-outline"},
          3 : {color : "yellow" , txt : "Booking Room" , icon : "mdi-account-circle-outline"}    
        }
      }
    }

  })