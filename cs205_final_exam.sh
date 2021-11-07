

#Begin script
BEGIN{FS="\t"}
{
#if statement for finding the rows and putting them in variables
if (NR!=1){

#find hp
{hp+=$6}

#find attack
{atk+=$7}
#Counts the number of lines in the file
{sum+=1}
}
}
END{
# Prints the requested information to stdout
print "======= SUMMARY OF POKEMON.DAT ======"
print "   Total Pokemon: " sum, "\n   Avg. HP: " hp/NR, "\n   Avg. Attack: " atk/NR,
"\n======= END SUMMARY ======="
