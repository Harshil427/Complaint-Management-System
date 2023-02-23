import { initializeApp } from "https://www.gstatic.com/firebasejs/9.10.0/firebase-app.js";
import {
  getAuth,
  onAuthStateChanged,
  signOut,
} from "https://www.gstatic.com/firebasejs/9.10.0/firebase-auth.js";

import {
  getDatabase,
  set,
  ref,
  update,
  child,
  get,
} from "https://www.gstatic.com/firebasejs/9.10.0/firebase-database.js";

import { getStorage } from "https://www.gstatic.com/firebasejs/9.10.0/firebase-storage.js";

const firebaseConfig = {
  apiKey: "AIzaSyCkqpmU0ZNB-WIbEt4sDvzvdXZQ6h28h_E",
  authDomain: "sgp-ii.firebaseapp.com",
  databaseURL: "https://sgp-ii-default-rtdb.firebaseio.com",
  projectId: "sgp-ii",
  storageBucket: "sgp-ii.appspot.com",
  messagingSenderId: "424652572048",
  appId: "1:424652572048:web:15dc97dda987752730df15",
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
const user = auth.currentUser;
const database = ref(getDatabase());
const storage = getStorage(app);

onAuthStateChanged(auth, (user) => {
  if (user) {
    console.log("User Login");
    document.getElementById("log").innerText = "LogOut";

    log.addEventListener("click", (e) => {
      signOut(auth)
        .then(() => {
          // Sign-out successful.
          alert("Logout successful");
          window.location.reload();
          window.location.replace("./index.html");
        })
        .catch((error) => {
          // An error happened.
          console.log(error);
        });
    });

    // Display user profile details

    if (user !== null) {
      console.log("Authent");

      get(child(database, "User_Data/" + user.uid))
        .then((snapshot) => {
          if (snapshot.exists()) {
            document.getElementById("displayName").value = snapshot.val().Name;
          } else {
            console.log("No data available");
          }
        })
        .catch((error) => {
          console.error(error);
        });
        
      //Update users Profile
      Update.addEventListener("click", (e) => {
        e.preventDefault();
        console.log("Update");

        const displayName = document.getElementById("displayName").value;
        const lastName = document.getElementById("Lastname").value;
        const email = document.getElementById("inputEmail4").value;
        const Phone = document.getElementById("phone").value;
        const Address = document.getElementById("Address").value;
        const PinCode = document.getElementById("PinCode").value;

        update(ref(database, "User_Data/" + user.uid), {
          Name: displayName,
          Lastname: lastName,
          email: email,
          Phone_number: Phone,
          Address: Address,
          Pincode: PinCode,
          //profile_picture : imageUrl
        }).then((userCredential) => {
          alert("Profile is Updated");
        });
      });
    }


  } 
  
  else {
    // ...
    console.log("Sign Out");

    //var out = document.getElementById("out");
    document.getElementById("log").innerText = "Login";

    log.addEventListener("click", (e) => {
      window.location.replace("/Login/index.html");
    });
    Profile.style.visibility = "hidden";
  }
});
