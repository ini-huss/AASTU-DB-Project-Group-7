const { MongoClient } = require("mongodb");

async function runQueries() {
  const uri = "mongodb://localhost:27017"; 
  const client = new MongoClient(uri);

  try {
    await client.connect();
    const db = client.db("LendingOrg");
    // FEEDBACK QUERIES 
    console.log("\n--- Feedback Queries ---");
    const feedback = await db.collection("Feedback").find({}).toArray();
    console.log("All Feedback:", feedback);
    await db.collection("Feedback").insertOne({
      FeedbackID: "F011",
      ClientID: "11",
      Message: "The loan officer explained everything clearly.",
      Date: "2026-05-02"
    });
    await db.collection("Feedback").updateOne(
      { FeedbackID: "F002" },
      { $set: { Message: "Repayment options were very flexible and helpful." } }
    );
    await db.collection("Feedback").deleteOne({ FeedbackID: "F010" });

    // APPLICATION QUERIES 
    console.log("\n--- Application Queries ---");
    await db.collection("Applications").insertOne({
      ApplicationID: "A011",
      ClientID: "11",
      LoanAmount: 5000,
      Status: "pending",
      SubmissionDate: "2026-04-20"
    });
    const allApps = await db.collection("Applications").find({}).toArray();
    console.log("All Applications:", allApps);
    const approvedApps = await db.collection("Applications").find({ Status: "approved" }).toArray();
    console.log("Approved Applications:", approvedApps);
    await db.collection("Applications").updateOne(
      { ApplicationID: "A011" },
      { $set: { Status: "approved" } }
    );
    await db.collection("Applications").deleteOne({ Status: "rejected" });
    const largeLoans = await db.collection("Applications").find({ LoanAmount: { $gt: 10000 } }).toArray();
    console.log("Large Loan Applications:", largeLoans);

  } finally {
    await client.close();
  }
}

runQueries().catch(console.dir);