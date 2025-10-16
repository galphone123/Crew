import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Test Supabase Connection") {
                Task {
                    do {
                        let res = try await SupabaseManager.shared.client
                            .database
                            .from("crews")
                            .select()
                            .execute()

                        print(String(data: res.data, encoding: .utf8) ?? "No data")
                    } catch {
                        print("Error:", error)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
