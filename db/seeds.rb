  Tenant.create(name: "Joe Schmoe")
  Tenant.create(name: "Lisa Simpson")
  Tenant.create(name: "Sarah Foot")

  Property.create(address: "1060 Homer Street")
  Property.create(address: "128 West Hastings Street") 
  Property.create(address: "3111 Commercial Drive")

  Contract.create(tenant_id: 1, property_id: 1, duration_of_lease: 4)
  Contract.create(tenant_id: 2, property_id: 2, duration_of_lease: 12)
  Contract.create(tenant_id: 3, property_id: 3, duration_of_lease: 0)
  Contract.create(payment_day: 1, start_date: 2017-01-03, end_date: 2018-01-03, rent: 1000, late_fee: 100, deposit: 500) #contract_id: 4

  Requisition.create(tenant_id: 1, property_id: 1, contract_id: 1, issue: "plumbing", response_time: 4, resolved: true)
  Requisition.create(tenant_id: 1, property_id: 1, contract_id: 1, issue: "roaches", resolved: false)
  Requisition.create(tenant_id: 1, property_id: 1, contract_id: 1, issue: "nachos", response_time: 4, resolved: true)
  Requisition.create(tenant_id: 2, property_id: 2, contract_id: 2, issue: "plumbing", response_time: 4, resolved: true)
  Requisition.create(tenant_id: 2, property_id: 2, contract_id: 2, issue: "snow removal", response_time: 4, resolved: true)

  Payment.create(contract_id: 4, date: 2017-02-01, total: 1000)