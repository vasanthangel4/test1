create procedure proc_insert_profiles
(
	@Name varchar(100),
	@Email varchar(200),
	@ContactNumber bigint,
	@ProfileURL varchar(100),
	@Message text
)
as begin
declare @AppliedDate datetime;
set @AppliedDate = GETDATE();
insert into Profiles
(
	Name,
	Email,
	ContactNumber,
	ProfileURL,
	Message,
	AppliedDate
)
values
(
	@Name,
	@Email,
	@ContactNumber,
	@ProfileURL,
	@Message,
	@AppliedDate
)
end