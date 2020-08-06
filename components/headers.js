Vue.component('headers', {
    template: `<v-app-bar app color="indigo darken-1" dark dense clipped-left flat>
    <v-app-bar-nav-icon></v-app-bar-nav-icon>
    
    <v-toolbar-title>Room Manager</v-toolbar-title>
    
    <v-spacer></v-spacer>
        
  <v-btn text
  <v-icon left>mdi-account</v-icon> Topster
  </v-btn>
    
    <template v-slot:extension >
    <v-tabs
    background-color="grey lighten-4"
    color="indigo darken-1"
    >
      <v-tabs-slider color="indigo darken-1"></v-tabs-slider>

      <v-tab href="index.html" >
        Booking
      </v-tab>
      <v-tab href="room.html" style="color:grey">
      Room
      </v-tab>
      <v-tab style="color:grey">
      Report
      </v-tab>
      <v-tab style="color:grey">
      Other
      </v-tab>
      
    </v-tabs>

  </template>

    </v-app-bar>`,
    props:['current_menu'],
    data(){
      return{
        menus : [
          {txt : "Booking" , link:"index.html"},
          {txt : "Room" , link:"room.html"},
          {txt:"Other" , link:'other.html'}
        ]
      }
    },
    methods:{
      getClass(name){
        var c = "tab_noactive"
        if(this.current_menu == name){
          c= "tab_active"
        }
        return c
      }
    }
  })
