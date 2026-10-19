#!/bin/bash
# Télécharge les photos du site dans le dossier images/ (à lancer une fois, double-clic).
# Sans ce dossier, le site affiche quand même les photos, chargées directement depuis Internet.
cd "$(dirname "$0")" || exit 1
mkdir -p images

telecharge() {
  echo "→ $1"
  curl -sSL --fail -o "images/$1" "$2" || echo "   échec pour $1"
}

G="https://lh3.googleusercontent.com/gps-cs-s"
telecharge vins-tonneau.jpg   "$G/ANWiy9R9Pyn3qTqvXA5NjHNzApQzlFj7b2e65NnvQ9fmcuOA-bgr2f-8xiYowss-FmSmNWpZTzF04WzbWI5E9NecxXNvznioSI1yrZuezMWI3tlIz7DaxAnt-mq1UWdRA4QhIX7IXltR9mwR6YHN=s2000"
telecharge conseil.jpg        "$G/ANWiy9ShzSAW8ulOorA7ZlbQdHUy8vMI9hL3AUv38zb96SCNqFWEtkFf1GsqQ7WNqaIyQpDg0_gzwVS0aa7LQj860jngTryxvzdZI2JtkZvh8eDtqCtXFFj3fROx1oE46_d5GJkeU3twzcHhgC8=s1600"
telecharge boutique.jpg       "$G/ANWiy9QcF5YiXwZur1Ex_Wm6hw9ne7_q4lFFSIoIBE8Kqlcu2Br8YjZjGkuFPSilTj5jFzClpUVizoC2AycgJjIn6TXiEHIFCQsNXXLLg-bV9xNtCJkQyixp58_LmtkAdInHh5QVLiO8=s2000"
telecharge vins.jpg           "$G/ANWiy9SrVsuWFKaBFibKWnZtc938zTZ8vituEs6NMqpomYdBfLbVDgcFhEbBewlWPzmV1pjZlB16JPoQxAMor_FsxCw7GBPGWRUmlO7KGL7f2h3_axtqfy-hIKtC-giPN1lLf7Ul9vjOTZnIIE-E=s1600"
telecharge spiritueux.jpg     "$G/ANWiy9QWXRhfuAMop2oB3fBz5HfhclTVK37G9Tf8TeFksMsJV1g_cfMnIEwWziW6OL1yQ6X0pu9jhOoU313KHfU0hFhxnAWSjAJC1fe1UcesNfZkPnzNXekcs8WFz_ygXR5puguVd__KokVFhDw=s1600"
telecharge rhums-arranges.jpg "$G/ANWiy9Qz7fTJno-vAt0r7gBLH4KGSgTDCN-nbuwWkie06PnibdDDs4FSs4SExQ7hJHGZS_9GkbE7-Hfb64bnuhh1_u6ZcJme3vqvR2zvS2iEm4vg9zqcKZ0cja6hqqQx06DCKxfW2nU_lXT4gnI=s1600"
telecharge liqueurs.jpg       "$G/ANWiy9R_BVnlGhfsvpbNfZUg6vLSpdjc6h1XkElvVlMEmIpVuYQenchSOoSMsPPiqhbTL-Y42AbkcQQhPWTAglQ_XzaGhiKIfSV5kY9EEuwDjyK_5uJJbgcoxryiK8-9QZ7x0tDcQRbRh7Ygk3ut=s1600"
telecharge facade.jpg         "$G/ANWiy9Q4rdAshp7uy9Qh313c2TzsznHH8BZfEDjJz5vQ0OjG3KwQdPpI2qfleasCezdIXToDDubHTzEs1Zqn3laNDV80aT8RltpQYX7Kzd5zLxoEa2GaeLEORtwG0_bBbSIKTty2cHVYPw=s1600"

echo ""
echo "Terminé. Les photos sont dans le dossier images/."
