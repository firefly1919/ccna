#!/bin/bash

# Liste des modules avec leurs noms formatés
modules=(
  "Module 1: Networking Today"
  "Module 2: Basic Switch and End Device Configuration"
  "Module 3: Protocols and Models"
  "Module 4: Physical Layer"
  "Module 5: Number Systems"
  "Module 6: Data Link Layer"
  "Module 7: Ethernet Switching"
  "Module 8: Network Layer"
  "Module 9: Address Resolution"
  "Module 10: Basic Router Configuration"
  "Module 11: IPv4 Addressing"
  "Module 12: IPv6 Addressing"
  "Module 13: ICMP"
  "Module 14: Transport Layer"
  "Module 15: Application Layer"
  "Module 16: Network Security Fundamentals"
  "Module 17: Build a Small Network"
)

exams=(
  "Checkpoint Exam: Basic Network Connectivity and Communications Exam"
  "Checkpoint Exam: Ethernet Concepts Exam"
  "Checkpoint Exam: Communicating Between Networks Exam"
  "Checkpoint Exam: IP Addressing Exam"
  "Checkpoint Exam: Network Application Communications Exam"
  "Checkpoint Exam: Building and Securing a Small Network Exam"
  "CCNA: Introduction to Networks Practice Final Exam"
  "CCNA: Introduction to Networks Course Final Exam"
)

# Créer les dossiers pour chaque module
for module in "${modules[@]}"; do
  folder_name=$(echo "$module" | sed 's/ /_/g' | sed 's/://g')
  mkdir -p "$folder_name"
  echo "# $module" > "$folder_name/README.md"
  echo "## Assignment" > "$folder_name/Assignment.md"
done

# Créer les dossiers pour chaque examen
mkdir -p Checkpoint_Exams
for exam in "${exams[@]}"; do
  folder_name=$(echo "$exam" | sed 's/ /_/g' | sed 's/://g')
  mkdir -p "Checkpoint_Exams/$folder_name"
  echo "# $exam" > "Checkpoint_Exams/$folder_name/README.md"
done

echo "✅ Structure créée avec succès."
