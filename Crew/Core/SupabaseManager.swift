import Foundation
import Supabase

class SupabaseManager {
    static let shared = SupabaseManager()
    let client: SupabaseClient

    private init() {
        let supabaseURL = URL(string: "https://vikmeiqkofdcxwfcjwot.supabase.co")!
        let supabaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZpa21laXFrb2ZkY3h3ZmNqd290Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTk5MTA1MjksImV4cCI6MjA3NTQ4NjUyOX0.PyDwIKbuJ8BTNtzuZ53cWa1SADZ821CJra29dPmLEps" // your full anon key here

        client = SupabaseClient(supabaseURL: supabaseURL, supabaseKey: supabaseKey)
    }
}
