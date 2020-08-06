Vue.component('sidenav', {
    template: `<v-navigation-drawer app clipped>
    <v-list
    subheader
    flat
    >
    <v-subheader style="color:indigo;font-size:16px">Room Status</v-subheader>
    
    <v-list-item-group
      multiple
    >
      <v-list-item v-for="s in status">
        <template v-slot:default="{ active, toggle }">
          <v-list-item-action>
            <v-checkbox
              v-model="value.status"
              @change="onCheckChange"
              color="primary"
              :value="s.id"
            ></v-checkbox>
          </v-list-item-action>
    
          <v-list-item-content>
            <v-list-item-title>{{s.status_name}}</v-list-item-title>
          </v-list-item-content>

          <v-list-item-avatar>
          {{s.count}}
        </v-list-item-avatar>

        </template>
      </v-list-item>
    
    </v-list-item-group>

    <v-subheader style="color:indigo;font-size:16px">Room Type</v-subheader>
    
    <v-list-item-group multiple>
      <v-list-item v-for="t in types">
        <template v-slot:default="{ active, toggle }">
          <v-list-item-action>
            <v-checkbox
              v-model="value.type"
              color="primary"
              @change="onCheckChange"
              :value="t.id"></v-checkbox>
          </v-list-item-action>
    
          <v-list-item-content>
            <v-list-item-title>{{t.type_name}}</v-list-item-title>
          </v-list-item-content>

          <v-list-item-avatar>
          {{t.count}}
        </v-list-item-avatar>

        </template>
      </v-list-item>
    </v-list-item-group>

    </v-list>
    </v-navigation-drawer>`,
    props:['status' , 'types' , 'value'],
    data(){
      return{
        settings:{
          type : [],
          status : []
        }
      }
    },
    methods:{
      onCheckChange(d){
        //alert('check')
        //this.$emit('settingchange' , this.settings)
      }
    },

  })


