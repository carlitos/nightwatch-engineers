<template>
    
      <div class="container p-5 mb-4 rounded-3 mt-5 mb-4 ">
        <div class="row">
        <div class="jumbotron jumbotron-fluid bg-light">
          <div class="container">
            <h1 class="display-4"> Bienvenid@ {{ nombre }} </h1>
            <p class="lead">Night Watch Engineers. Sistema de Monitoreo de <a href="https://www.recorrido.cl/es" target="_blank">Recorrido.cl</a></p>
          </div>
        </div>
        </div>

        <div class="row mt-5">
                       
            <div class="col-6">
              <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg"  v-model="selected" @change="changeCompany">
                <option selected>Selecciona una empresa</option>
                <option v-for="company in companies_list" :value=" company.id" :key="company"> {{ company.name }} </option>
              </select>
             </div>


             <div class="col-6">
              <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg"  v-model="selected_week" @change="changeWeek">
                <option selected>Selecciona una semana</option>
                <option v-for="week in weeks_list" :value=" week.id" :key="week"> Semana {{ week.number_of_week }} </option>
              </select>
             </div>
          </div>

          <div class="row">
            <div class="col-md-6">
              <button type="button" class="btn btn-primary btn-lg">Guardar</button>
             </div>
             <div class="col-md-6">
              <button type="button" class="btn btn-primary btn-success btn-lg">Editar disponibilidad</button>
             </div>


          </div>

        <div class="row">
            <div class="col-md-4">
              <table class="table mt-5">
                        <thead>
                          <tr>
                            <th scope="col"></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">Ernesto</th>
                            <td>15</td>
                         </tr>
                         <tr>
                            <th scope="row">Bárbara</th>
                            <td>19</td>
                         </tr>
                         <tr>
                            <th scope="row">Benjamin</th>
                            <td>16</td>
                         </tr>
                         <tr>
                            <th scope="row">Sin asignar</th>
                            <td>0</td>
                         </tr>
                    </tbody>
              </table>
              </div>

              <div v-for="(days) in week" :key = "days" class="col-md-4"> 
                    <table class="table mt-5">
                        <thead>
                          <tr>
                            <th scope="col">{{ days.day }}</th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr v-for= "(shedule, j) in days.schedules" :key="'shedule'+j">
                              <th scope="row">{{ shedule.schedule }}</th>
                              <th scope="row">
                                <input type="checkbox" name="'row'+schedule.shedule_id+[]" id="checkbox" v-model="checkedNames" >
                                </th>
                            </tr>
                          </tbody>
                        </table> 
                  </div>     
            </div><!-- end v-for -->

    </div>

    


</template>

<script>

import jwt_decode from "jwt-decode";
import axios from 'axios';

export default {
  name: 'home',
  data(){
    return {
      nombre:         '',
      companies_list: [],
      weeks_list:     [],
      days_of_week:   [],
      week:   [],
      selected:       '',
      selected_week:  '',
      checkedNames: []
    }
  },
  props: {
    msg: String,
  },
  methods:{
    changeCompany( ){
      console.log( 'Compania', this.selected);
    },
    changeWeek( ){

      console.log('Semana ', this.selected_week);

      axios
      .get('http://localhost:3000/weeks/' + this.selected_week)
      .then( response =>  {
             this.week = response.data.days_values;
             console.log( 'Semana completa seleccionada', this.week );
          })
      .catch( error => console.log( error )) 

    },
    showAlert() {
         this.$swal('Hello Vue world!!!');
     },
     getKey(campo) {
      var token = localStorage.getItem('jwt');
      var decoded = jwt_decode(token);    
      if (decoded) {
        return decoded[ campo ]
      }
    },
    created(){
      this.nombre = this.getKey( 'name' )
      this.getCompanies();
      this.getWeeks();
    },
    getCompanies(){
      axios
      .get('http://localhost:3000/companies')
      .then( response =>  {
             this.companies_list = response.data;
             console.log(this.companies_list);
          })
      .catch( error => console.log( error ))
    },
    getWeeks( ){
      axios
      .get('http://localhost:3000/weeks/')
      .then( response =>  {
             this.weeks_list = response.data;
             console.log( 'Lista de la semana', this.weeks_list );
          })
      .catch( error => console.log( error ))
    }
  },
  mounted() {
    this.getCompanies();
    this.getWeeks();
  }
  
}

</script>
