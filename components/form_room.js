Vue.component('form_room', {
  props : ['dialog' , 'roomdata'],
    template: `<v-form method="post" action="./php/api/addroom.php">
    <v-dialog v-model="dialog"  persistent max-width="600px">
        <v-card>
      <v-card-title>
        <span class="headline">Add Room</span>
      </v-card-title>
      <v-card-text>
        <v-container>
    <v-row>
    <v-col cols="4">
    <v-text-field label="Room Code" v-model="roomdata.room_code"></v-text-field>
    </v-col>
    <v-col cols="4">
    <v-text-field label="Room Price" v-model="roomdata.room_price"></v-text-field>
    </v-col>
        <v-col cols="4">
    <v-text-field label="Room Bed" v-model="roomdata.room_bed"></v-text-field>
    </v-col>
    <v-col cols="6">
          <v-select
          :items="roomtype"
          label="Room Type"
          v-model="roomdata.room_type"
        ></v-select>
    </v-col>
        <v-col cols="6">
          <v-select
          :items="roomstat"
          label="Room Status"
          v-model="roomdata.room_status"
        ></v-select>
    </v-col>
    </v-row>
         </v-container>
      </v-card-text>
      <v-card-actions>
        <v-spacer></v-spacer>
        <v-btn color="blue darken-1" text @click="dialog = false">Close</v-btn>
        <v-btn color="success" type="submit" @click="$emit('submit')">Save</v-btn>
      </v-card-actions>
    </v-card>
    </v-dialog>
    </v-form>`,
    data(){
      return{
        roomtype : [{text : "Fan" , value : 1},{text : "Air" , value : 2}],
        roomstat :  [{text : "Free Room" , value : 1},{text : "Rending Room" , value : 2}]
      }
    }
  })
