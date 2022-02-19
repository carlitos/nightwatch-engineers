<template>
    <section class="vh-100" style="background-color: #15b9c0;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <img src="../assets/logo-vertical.png" class="logo mb-5" alt="">

            <div class="form-outline mb-4">
              <input type="username" 
                     id="inputUsername" 
                     class="form-control form-control-lg"
                     v-model = "user.username"
                     placeholder= "Username"
                     required
                     autofocus
                      />
              <label class="form-label" for="typeEmailX-2">Username</label>
            </div>

            <div class="form-outline mb-4">
              <input type="password" 
                    id="typePasswordX-2" 
                    class="form-control form-control-lg" 
                    v-model="user.password"
                    placeholder="Contraseña"
                    required
                    />
              <label class="form-label" for="typePasswordX-2">Password</label>
            </div>

            <button class="btn btn-primary btn-lg btn-block " id="recorrido-color" type="submit" @click.prevent="login">Login</button>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</template>

<script>

import axios  from "axios";

const ENDPOINT_WS = 'http://localhost:3000/'

export default ({
    
  name: 'home',
  props: {
    msg: String
  },
  data() {
      return{
          user: {
            username : '',
            password : ''
          }
      }
  },
  methods: {   
      login( ){

           this.$swal.fire({
              allowOutsideClick: false,
              icon: 'info',
              text: 'Espere por favor'
            });

          this.$swal.showLoading();

          axios
            .post(ENDPOINT_WS + 'login', this.user )
            .then( response => { 

                        this.$swal.close();
                        this.$router.push('/home');
                       
                       if ( response && response.data.jwt ) {   
                          
                            localStorage.setItem('jwt', response.data.jwt);

                            console.log( response ) 
                        }     
                            
                   }
                )
            .catch( error => {
                        this.$swal.fire( {
                        icon: 'error',
                        title: 'Error al ingresar',
                        text: error['statusText']
                        });
            }  )
      }
  },
  mounted () {

  }
})

</script>

<style>

.logo {
    max-width: 340px;
}

#recorrido-color{
  background-color: #15b9c0;
}


.login-form {
  min-width: 500px;
  position: absolute;
  text-align: center;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-size: 2.5rem
}

.login-box{
    background-color: gray;
    border-radius: 10px 5%;
}

@media (max-width: 500px) {
  .login-form {
    min-width: 90%;
  }
}


</style>
